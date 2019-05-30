SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[id_noticia] [int] IDENTITY(1,1) NOT NULL,
	[id_autor] [int] NULL,
	[Titulo] [varchar](255) NULL,
	[Texto] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Noticias]  WITH CHECK ADD  CONSTRAINT [FK_Autores] FOREIGN KEY([id_autor])
REFERENCES [dbo].[Autores] ([id_autor])
GO
ALTER TABLE [dbo].[Noticias] CHECK CONSTRAINT [FK_Autores]
GO