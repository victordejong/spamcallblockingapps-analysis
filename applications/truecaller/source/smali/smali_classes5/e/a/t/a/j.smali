.class public final Le/a/t/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/e;


# instance fields
.field public final synthetic a:Le/a/t/a/h;


# direct methods
.method public constructor <init>(Le/a/t/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/j;->a:Le/a/t/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e0(Le/a/t/a/a/f;)V
    .locals 1

    const-string v0, "gif"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/j;->a:Le/a/t/a/h;

    .line 2
    iget-object v0, v0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    .line 3
    invoke-interface {v0, p1}, Le/a/t/a/a/g;->M(Le/a/t/a/a/f;)V

    return-void
.end method
