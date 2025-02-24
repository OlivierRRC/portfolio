---
layout: default
permalink: /
---

{% include landing.html %}

<style>
.row.skills{
    display: flex;
}

.column.skills {
    position: relative;
    top: 50%;

     flex: 20%;
     padding: 5px;
}

.skills {
    height:50%;
}

.test{
    max-width: 50%;
    margin:auto;
    display:flex;
}

[data-theme="light"] .test{ filter: brightness(0) saturate(100%) invert(7%) sepia(13%) saturate(358%) hue-rotate(155deg) brightness(92%) contrast(92%);}
[data-theme="dark"] .test{ filter: brightness(0) saturate(100%) invert(84%) sepia(100%) saturate(2%) hue-rotate(262deg) brightness(106%) contrast(101%); }

</style>

# Who Am I?

<script>
let date = new Date()
let age;

if(date.getMonth() >= 1 && date.getDate() >= 9){
    age = date.getFullYear()-2005
}else{
    age = date.getFullYear()-2006
}
</script>

I'm a <script>document.write(age)</script> year old game development student from Winnipeg Manitoba. I'm passionate about writing code to make games come to life, and making interactive stories that are only possible in games.

In my free time, I love reading books, watching movies, and collecting vinyl records.

Take a look at my <a href="url">projects</a> to see examples of my skills.

<div class="skills">
<div class="row skills">
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-01.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-02.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-03.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-04.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-05.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
</div>
</div>
