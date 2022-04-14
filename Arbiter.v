`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:38 03/24/2022 
// Design Name: 
// Module Name:    Arbiter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Arbiter(
input Rqst0,Rqst1,Rqst2,Rqst3,
//input [3:0]BurstT,
input clk,resetn,
output reg Grant0,Grant1,Grant2,Grant3
    );


reg [2:0]curg,nexg;
parameter one = 3'b000,two = 3'b001,three = 3'b010,four = 3'b011,burst = 3'b100;

always @(posedge clk)
begin
if(~resetn)
curg <= one;
else
curg <= nexg;
end


always @(*)
begin
case({Rqst3,Rqst2,Rqst1,Rqst0})
4'b0000:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
4'b0001:{Grant3,Grant2,Grant1,Grant0} = 4'b0001;
4'b0010:{Grant3,Grant2,Grant1,Grant0} = 4'b0010;
4'b0011:begin
			case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		 end
4'b0100:{Grant3,Grant2,Grant1,Grant0} = 4'b0100;
4'b0101:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b0110:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0000;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b0111:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1000:{Grant3,Grant2,Grant1,Grant0} = 4'b1000;
4'b1001: begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1010: begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0000;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1011: begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1100:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0000;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1101:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1110: begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0000;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
4'b1111:begin
		   case(curg)
				one:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0001;
				nexg = two;
				end
				two:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0010;
				nexg = three;
				end
				three:begin {Grant3,Grant2,Grant1,Grant0} = 4'b0100;
				nexg = four;
				end
				four:begin {Grant3,Grant2,Grant1,Grant0} = 4'b1000;
				nexg = burst;
				end
			   burst:{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
			endcase
		end
default:begin
			nexg = one;
			{Grant3,Grant2,Grant1,Grant0} = 4'b0000;
		end
endcase
end

endmodule
