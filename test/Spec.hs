import Test.Hspec
import HaskellBook

main :: IO ()
main = hspec $ do
    describe "Recursion" $ do
        it "McCarthy 91 function" $ do
            map mc91 [95..110] `shouldBe` [91,91,91,91,91,91,91,92,93,94,95,96,97,98,99,100]

        it "WordNumber" $ do
            wordNumber 12324546 `shouldBe` "one-two-three-two-four-five-four-six"
