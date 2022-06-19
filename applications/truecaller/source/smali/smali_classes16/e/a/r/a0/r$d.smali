.class public final Le/a/r/a0/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/r;->Tl(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a0/r;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/r/a0/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/a0/r$d;->a:Le/a/r/a0/r;

    iput-object p2, p0, Le/a/r/a0/r$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/a0/r$d;->a:Le/a/r/a0/r;

    invoke-virtual {v0}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object v0

    iget-object v1, p0, Le/a/r/a0/r$d;->b:Ljava/util/List;

    check-cast v0, Le/a/r/a0/z;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "permissions"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/r/a0/z;->g:Le/a/r/c/l;

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Le/a/r/c/l;->a:Z

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a0/x;

    if-eqz v0, :cond_0

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Le/a/r/a0/x;->gp(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
