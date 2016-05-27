#/usr/bin/env bash
elm make alias.elm && \
elm make Anagrams.elm anagramapp.elm && \
elm make animals.elm && \
elm make another_mystery.elm && \
elm make double.elm --output tests.js && node tests.js && \
elm make Exp.elm exp_test.elm && \
elm make infix_as_prefix.elm && \
elm make mystery.elm && \
elm make new_operators.elm && \
elm make record_extension.elm && \
elm make records.elm && \
elm make response.elm && \
elm make Shapes.elm shape_test.elm && \
elm make tree.elm && \
elm make triple.elm && \
elm make tuple_examples.elm && \
elm make union_and_record.elm && \
elm make wordcount.elm && \


# elm make mouse_tracker.elm && \
# elm make circle_tracker.elm && \
# elm make filter_example.elm && \
# elm spaceship.elm && \
# elm make sketch.elm && \


# elm make triple.erl | diff ../test/triple_expected - && \
# escript wordcount.erl < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \

if [ $? -ne 0 ]; then
    echo
    echo "*** ELM TESTS FAILED ***"
    exit 1
else
    echo
    echo "ELM TESTS PASSED"
fi
