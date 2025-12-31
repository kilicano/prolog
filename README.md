# Logic Programming in Prolog  
**International Christian University (ICU), Tokyo – Computer Science**

This repository contains coursework from a **Logic Programming** course in **Prolog** completed during my **exchange semester at International Christian University (ICU), Tokyo**, where I studied **Computer Science**.

The course emphasized **declarative problem solving**, **logical inference**, and **search-based reasoning**, offering a fundamentally different paradigm from imperative and object-oriented programming.

## Overview

The assignments focus on modelling problems using logical rules and relations rather than control flow, and solving them via inference and backtracking.

Implemented problems include:

- Graph search and path-finding
- Constraint satisfaction (N-Queens problem)
- Flexible rule-based modelling in Prolog

## Key Concepts Demonstrated

- Logic programming and declarative modelling
- Recursion and backtracking
- Constraint satisfaction problems (CSPs)
- Graph traversal using logical inference
- Writing clear, composable predicates
- Reasoning about correctness rather than execution order

## Project Structure

- `graphsearch_191029.pl`  
  Implements graph search logic using Prolog predicates, focusing on reachability and path exploration.

- `queens_flexible_hw8_2019.pl`  
  Solves a generalized N-Queens problem using constraint-based reasoning and backtracking.

## Context

This work was completed as part of an **international exchange semester in Japan**, complementing my quantitative background in **Econometrics and Operations Research** with formal **Computer Science** training.

The code is intentionally kept close to the original submission to reflect my understanding of logic programming at that stage.

## How to Run

Run using any standard Prolog interpreter (e.g. SWI-Prolog):

```prolog
?- consult('graphsearch_191029.pl').
?- consult('queens_flexible_hw8_2019.pl').
