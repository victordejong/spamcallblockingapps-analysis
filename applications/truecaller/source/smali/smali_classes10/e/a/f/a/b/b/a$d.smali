.class public final Le/a/f/a/b/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/b/b/a;


# direct methods
.method public constructor <init>(Le/a/f/a/b/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f/a/b/b/a$d;->a:Le/a/f/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public U4(CLcom/truecaller/dialpad_view/DialpadKeyActionState;)V
    .locals 2

    const-string v0, "dialpadKeyState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/dialpad_view/DialpadKeyActionState;->UP:Lcom/truecaller/dialpad_view/DialpadKeyActionState;

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Le/a/f/a/b/b/a$d;->a:Le/a/f/a/b/b/a;

    invoke-virtual {p2}, Le/a/f/a/b/b/a;->RA()Le/a/f/a/b/b/e;

    move-result-object p2

    .line 3
    iget-object v0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/b/d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/f/a/b/b/d;->o9(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p2, Le/a/f/a/b/b/e;->b:Le/a/f/y/v;

    invoke-interface {p2, p1}, Le/a/f/y/v;->t1(C)V

    :cond_1
    return-void
.end method
