.class public final Le/a/b/a/f/a$i;
.super Le/a/b/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final c:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1a6

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b/a/f/a;-><init>(ILs1/z/c/f;)V

    iput-object p1, p0, Le/a/b/a/f/a$i;->c:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    return-void
.end method
