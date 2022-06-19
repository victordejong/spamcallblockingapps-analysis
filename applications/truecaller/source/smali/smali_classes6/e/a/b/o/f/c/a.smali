.class public final Le/a/b/o/f/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

.field public b:Le/a/b/o/c/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/a/b/o/c/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/o/f/c/a;->b:Le/a/b/o/c/b/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "district"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Le/a/b/o/c/b/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/o/f/c/a;->b:Le/a/b/o/c/b/a;

    return-void
.end method

.method public final c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/o/f/c/a;->a:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    return-void
.end method
