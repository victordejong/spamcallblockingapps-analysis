.class public final synthetic Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->f1(Ljava/util/List;Le/f/a/i;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V
    .locals 7

    const-class v3, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;

    const/4 v1, 0x1

    const-string v4, "onViewImage"

    const-string v5, "onViewImage(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;

    .line 3
    invoke-interface {v0, p1}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;->bl(Ljava/lang/String;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
