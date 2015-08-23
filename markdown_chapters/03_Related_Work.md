#Related Work
_This section is co-authored with Marissa Allen_

Our approach to  pop-up creation does not require glue or 3D modeling experience, but is more similar to kirigami. Glue-based design presents different affordances than kirigami, but requires an assembly stage that disconnects the initial 2D pattern from the final pop-up geometry [Glassner 1998]. Others approach the pop-up design problem from the opposite direction: creating designs by modeling in 3D space [Ruiz et al. 2014]. [Li et al. 2010] transform 3D models into paper architectures that are stable and rigid. A drawback to this approach is that it does not preserve the original model’s features. Compared to existing tools, Foldlings allows novice users more opportunities for free-form, artistic expression in the pop-up medium.

egami.  Origami Design.
@fastag2009egami

There has been prior work done on automated methods to create a pop-up schematic.  For example, Li, Xian-Ying, et al. develop an algorithm that transforms user-defined models into paper architectures that are stable and rigid. Because their algorithm modifies the input geometry given by the user, the end result does not preserve the original model’s features.  Other attempts to create pop-up cards such as Abel, Zachary, et al. — can only take in simple polygonal meshes and require the user to fold and glue additional pieces of paper together, whereas our approach creates a pop-up card with arbitrary shapes from a single piece of paper. These methods also impose strict constraints on user input, which requires the end user to know how to model an object in 3D and thus is not accessible to novice users.

Hendrix, Susan L., and Michael Eisenberg. "Computer-assisted pop-up design for children: computationally enriched paper engineering." Advanced Technology for Learning 3.2 (2006): 119-127. @hendrix2006computer

The pop-up tool described by this paper is very similar to our current design. However, this tool was built as an introduction to the engineering sciences and not as a tool to aid artistic design. Perhaps as a result of an engineering-centric design methodology, the pop-up tool has a more restrictive UI than ours. Their program is designed to only create the simple folding mechanism of the pop-up card. Non-rectilinear cuts must be added manually, outside the software.

Okamura, Sosuke, and Takeo Igarashi. "An interface for assisting the design and production of pop-up card." Smart Graphics. Springer Berlin Heidelberg, 2009. @okamura2009interface

This paper describes a program to design elaborate 180º pop-ups that can be applied to both cards and books strictly within a 3D environment. Their manufacturing process is additive, using glue to connect the pieces. They implement collision testing and multiple components inside their pop-up program. However, their program does not incorporate the main folding piece in designing their pop-ups, it is simply a mechanical driver for the rest of the design. Therefore, a user cannot design a pop-up that consists of only one piece of paper that does not require gluing.

Way, Der-Lor, Yong-Ning Hu, and Zen-Chung Shih. "The Creation of V-fold Animal Pop-Up Cards from 3D Models Using a Directed Acyclic Graph."Advances in Intelligent Systems and Applications-Volume 2. Springer Berlin Heidelberg, 2013. 465-475. @way2013creation 

The tool described in this paper creates pop-ups from 3D models. The tool segments a 3D model and then uses shape recognition to create paper models in pop-up cards. The authors create an acyclic graph from these segments and use the nodes to drive a simulation of the pieces based on opening and closing the card. This paper has a similar simulation technique to our approach. However, they generate their designs from 3D shapes instead of 2D patterns.
