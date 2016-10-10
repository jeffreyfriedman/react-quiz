import React from 'react'

const Answer = props => {
  let appliedClass = `text-center question ${props.newClass}`;

  return (
    <div className="spacer">
      <li className={appliedClass} onClick={props.onClick}>
        {props.body}
      </li>
    </div>
  )
}

export default Answer;
