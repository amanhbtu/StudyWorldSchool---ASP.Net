<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prospectus.aspx.cs" Inherits="prospectus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="welcome-w3" style="padding-top:5px;">
				<div class="container" >
					<h2 class="tittle" style="padding-bottom:20px">PROSPECTUS</h2>
                    <cc1:Accordion ID="Accordion1" runat="server">
                  <Panes>
                  <cc1:AccordionPane ID="pnluniform" runat="server">
                  <Header>
                                <div class="schoolname" style="cursor:pointer" >
								        <h4 style="text-align:left;padding-left:15px">School Uniform</h4>
                                </div>
                  </Header>
                  <Content>
<div style="padding: 10px; border-width: medium; border-color: #FF9900; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
Every student is required to wear the college uniform which consists of the following:-<br /><br />
<b>Summer :</b><br />
Light grey shorts upto class V and trousers from class VI onwards, white plain shirt, black and plain oxford shoes with laces (no fancy shoes), black socks. College tie, belt and the House badge.<br />
<br />
<b>Winter :</b><br />
Grey worsted flannel, navy blue pull-over and blazer with College crest, black and plain oxford shoes with laces, black socks/stockings, tie, belt and the House badge.<br /><br />
<b>Note :</b><br />
For Nursery & K.G. bow instead of tie<br/>
</br/>
<b>SATURDAYS : (Both Summer and Winter)</b><br />
White trousers instead of grey and plain white P.T. shoes.<br />
All students should be careful to attend class and other College functions strictly in College uniform. They should pay special attention to the exact shade of the uniform approved by the College. Boys attending College without proper uniform may not be permitted to attend the classes.<br />
<br />
<b>Neatness:</b><br />
“Cleanliness is next to godliness”. All should come to College neat and tidy; shoes should be well polished and hair cut short. No beard, long hair nor moustache is allowed except for SIKH students. They should wear navy blue turbans.<br />
</p>
</div>
                  </Content>
                  </cc1:AccordionPane>
                  <cc1:AccordionPane ID="pnlcourse" runat="server">
                  <Header>
                 <div class="schoolname" style="cursor:pointer">
								        <h4 style="text-align:left;padding-left:15px">Courseof Study</h4>
                                        </div>
                  </Header>
                  <Content>
                  <div style="padding: 10px; border-width: medium; border-color: #FF9900; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
<b>Curricular:</b> From Nursery to Class X General education in all the subjects is provided,
For Classes XI and XII the College provides courses of studies in English, Hindi, Science (Physics, Chemistry/ Biology)/ Mathematics/ Computer Literacy, commerce, Account, Economic, Environmental Education and SUPW only.<br />
<br />
<b>Co-curricular:</b> Besides academic courses, for the all-round development of students, the College provides co-curricular activities like debates, dramatics/ elocution, music, art/craft, socially useful and productive works, electronics, food craft, etc.<br />
<br />
Religious/Moral Instruction: Religion is taught to Catholic/Christian students. For others, a course of Moral Instruction is given, for inculcations of sound moral values and character formation.<br />
<br />
<b>Games and Sports:</b> The College has large play-fields for hockey, football, cricket, indoor badminton, table-tennis, courts for basketball, volleyball and facilities for swimming, gymnastics and Athletics.<br />
<br />
<b>Physical Education:</b> For physical education and fitness regular training is provided through P.T. and swimming as a part of the curriculum.<br />
<br />
<b>Functions and Programmes:</b> Teachers’ Day/ Children’s Day, Parents’ Day, Independence Day, Republic Day, Patron’s Day, Christmas Day/ Workers’ Day, etc. are celebrated with cultural and field activities organised according to the spirit of the day and purpose of the function/programme.<br />
<br />
NCC: Air Wing of the NCC exists in the College.<br />
<b>Service to the community:</b> Awareness and action oriented programmes. Participation is compulsory for all the students.<br />
<br />
<b>Other Activities:</b> Excursions, picnics and various projects are undertaken during the year. Students are encouraged to participate in various competitions in and outside the College<br />
</p>
                  </div>
                  </Content>
                  </cc1:AccordionPane>
                  <cc1:AccordionPane ID="pnlpattern" runat="server">
                  <Header>
                 <div class="schoolname" style="cursor:pointer">
								        <h4 style="text-align:left;padding-left:15px">Examination Pattern</h4>
                                        </div>
                  </Header>
                  <Content>
                  <div style="padding: 10px; border-width: medium; border-color: #FF9900; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
<b>Curricular:</b> From Nursery to Class X General education in all the subjects is provided,
For Classes XI and XII the College provides courses of studies in English, Hindi, Science (Physics, Chemistry/ Biology)/ Mathematics/ Computer Literacy, commerce, Account, Economic, Environmental Education and SUPW only.<br />
<br />
<b>Co-curricular:</b> Besides academic courses, for the all-round development of students, the College provides co-curricular activities like debates, dramatics/ elocution, music, art/craft, socially useful and productive works, electronics, food craft, etc.<br />
<br />
Religious/Moral Instruction: Religion is taught to Catholic/Christian students. For others, a course of Moral Instruction is given, for inculcations of sound moral values and character formation.<br />
<br />
<b>Games and Sports:</b> The College has large play-fields for hockey, football, cricket, indoor badminton, table-tennis, courts for basketball, volleyball and facilities for swimming, gymnastics and Athletics.<br />
<br />
<b>Physical Education:</b> For physical education and fitness regular training is provided through P.T. and swimming as a part of the curriculum.<br />
<br />
<b>Functions and Programmes:</b> Teachers’ Day/ Children’s Day, Parents’ Day, Independence Day, Republic Day, Patron’s Day, Christmas Day/ Workers’ Day, etc. are celebrated with cultural and field activities organised according to the spirit of the day and purpose of the function/programme.<br />
<br />
NCC: Air Wing of the NCC exists in the College.<br />
<b>Service to the community:</b> Awareness and action oriented programmes. Participation is compulsory for all the students.<br />
<br />
<b>Other Activities:</b> Excursions, picnics and various projects are undertaken during the year. Students are encouraged to participate in various competitions in and outside the College<br />
</p>
                  </div>
                  </Content>
                  </cc1:AccordionPane>
                  </Panes>
                    </cc1:Accordion>

			    </div>
</div>
</asp:Content>

