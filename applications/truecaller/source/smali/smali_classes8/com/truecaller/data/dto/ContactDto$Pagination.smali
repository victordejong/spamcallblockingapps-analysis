.class public Lcom/truecaller/data/dto/ContactDto$Pagination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pagination"
.end annotation


# instance fields
.field public next:Ljava/lang/String;

.field public pageId:Ljava/lang/String;

.field public prev:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->prev:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->pageId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->next:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Pagination{prev=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->prev:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", next=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->next:Ljava/lang/String;

    const-string v3, ", pageId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Pagination;->pageId:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
