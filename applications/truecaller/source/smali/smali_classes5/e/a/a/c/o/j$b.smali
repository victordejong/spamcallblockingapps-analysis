.class public final Le/a/a/c/o/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/o/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/o/j;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/o/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/o/j$b;->a:Le/a/a/c/o/j;

    .line 3
    iput p2, p0, Le/a/a/c/o/j$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/c/o/j$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/o/j$b;->a:Le/a/a/c/o/j;

    .line 3
    iget-object v0, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    .line 4
    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/c/o/j$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/a/c/o/j$b;->a:Le/a/a/c/o/j;

    .line 8
    new-instance v13, Le/a/a/c/o/e;

    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 9
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v4

    .line 11
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v2, v0, Le/a/a/c/o/j;->b:Le/a/a/c/o/b;

    .line 13
    iget-object v5, v2, Le/a/a/c/o/b;->a:Lcom/truecaller/messaging/data/types/Conversation;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 14
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v2, v0, Le/a/a/c/o/j;->d:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->I3()Le/a/a/c/o/h;

    move-result-object v7

    .line 16
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v8

    .line 18
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v9

    .line 20
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 22
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v2, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 24
    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v0, v0, Le/a/a/c/o/j;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->s4()Le/a/o5/l1;

    move-result-object v12

    .line 26
    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v13

    .line 27
    invoke-direct/range {v2 .. v12}, Le/a/a/c/o/e;-><init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Lo3/a;Le/a/a/c/o/h;Le/a/o5/b0;Le/a/p5/a0;Le/a/p5/c0;Le/a/q2/a;Le/a/o5/l1;)V

    return-object v13
.end method
