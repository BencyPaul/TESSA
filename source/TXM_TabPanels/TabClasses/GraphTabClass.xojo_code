#tag Class
Protected Class GraphTabClass
Inherits TabClass
	#tag Method, Flags = &h1000
		Sub Constructor(ConfigText as String)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(ConfigText as String) -- From TabClass
		  // Constructor(ConfigText as String) -- From BasicClass
		  Super.Constructor(ConfigText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateContainer() As ContainerControl
		  Dim container As ContainerControl = Super.CreateContainer
		  If container = Nil Then
		    container = new GraphTabContainer(Self)
		  End
		  Return container
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FitsForStep(theStep as BasicClass, ByRef isDefaultOut as Boolean) As Boolean
		  // overrides TabClass
		  
		  if (theStep isA Graph_StepClass) or (theStep isA XYCurve_StepClass) then
		    isDefaultOut = true
		    return true
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetUserSelectedGraph() As Graph_StepClass
		  // adds a graph in the table-selection-list
		  // if it is the first entry then "no tables definied" is being removed
		  if TabContainer <> Nil And TabContainer IsA GraphTabContainer Then
		    return GraphTabContainer(TabContainer).GetUserSelectedGraph
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Redraw()
		  if TabContainer <> Nil And TabContainer IsA GraphTabContainer Then
		    GraphTabContainer(TabContainer).Redraw
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RefreshShownValues(fullRedraw as Boolean)
		  self.Redraw
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="mUpdateCanvasMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasicTypeName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Changed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoSYNC"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ErrorText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Expanded"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Local_Link_Errors"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name_Error"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Included_Elements"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Num_Links"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SAMStepID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SendState"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sub_Link_Errors"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
