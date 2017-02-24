import Test.Hspec
import HaskellBook ()

main :: IO ()
main = hspec $ do
    describe "Foo" $ do
        it "bar" $ do
            True `shouldBe` True
