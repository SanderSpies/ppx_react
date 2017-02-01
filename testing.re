module Foo = {
  include ReactRe.Component;
  let name = "Foo";
  type props = {message: string};
  let render _ => <div />;
};

include ReactRe.CreateComponent Foo;

let createElement ::message ::children => wrapProps {message: message} ::children
