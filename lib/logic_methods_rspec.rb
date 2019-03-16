RSpec.describe "Test logic_methods" do
    describe "Test read_string method" do # agrupa los casos
      it "returns a string with data from Carlos.txt" do # define cada caso
        expect(read_string("Carlos.txt")).to eq("")
      end
    
      it "return errors when there is other values" do # define cada caso
        expect(read_string("CARLOS")).to eq("Error")
      end
      
    end
   end
