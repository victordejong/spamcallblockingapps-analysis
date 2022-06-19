.class public final Le/a/v/a/y/c$a;
.super Le/a/i/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/y/c;-><init>(Ls1/w/f;Le/a/v/a/y/h;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/y/c;


# direct methods
.method public constructor <init>(Le/a/v/a/y/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/y/c$a;->a:Le/a/v/a/y/c;

    invoke-direct {p0}, Le/a/i/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c$a;->a:Le/a/v/a/y/c;

    .line 2
    iget-boolean v1, v0, Le/a/v/a/y/c;->d:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/y/b;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    .line 5
    check-cast v0, Le/a/v/a/y/i;

    .line 6
    iget-object v0, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v0}, Le/a/v/a/y/j;->a()Le/a/i/g;

    move-result-object v0

    .line 7
    invoke-interface {v1, p1, v0}, Le/a/v/a/y/b;->I3(Le/a/i/c/a/c;Le/a/i/g;)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/v/a/y/c$a;->a:Le/a/v/a/y/c;

    .line 9
    iget-object p1, p1, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    const/4 v0, 0x1

    .line 10
    check-cast p1, Le/a/v/a/y/i;

    invoke-virtual {p1, v0}, Le/a/v/a/y/i;->e(Z)V

    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c$a;->a:Le/a/v/a/y/c;

    .line 2
    iget-boolean v1, v0, Le/a/v/a/y/c;->d:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/v/a/y/c;->Jj()V

    :cond_0
    return-void
.end method
