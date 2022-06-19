.class public final Le/a/a/o/a/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/o/a/m;
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
.field public final a:Le/a/a/o/a/m;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/o/a/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 3
    iput p2, p0, Le/a/a/o/a/m$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/o/a/m$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 3
    iget-object v0, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    .line 4
    invoke-interface {v0}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/o/a/m$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v9, Le/a/a/o/a/e;

    iget-object v2, v0, Le/a/a/o/a/m;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/a/o/a/f;

    iget-object v2, v0, Le/a/a/o/a/m;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/o/a/b;

    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v5

    .line 10
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v6

    .line 12
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v7

    .line 14
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v8, Le/a/x2/a;

    iget-object v0, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-direct {v8, v0}, Le/a/x2/a;-><init>(Le/a/o5/f0;)V

    move-object v2, v9

    .line 18
    invoke-direct/range {v2 .. v8}, Le/a/a/o/a/e;-><init>(Le/a/a/o/a/f;Le/a/a/o/a/b;Le/a/b0/q/h0;Le/a/p5/c0;Le/a/o5/b0;Le/a/x2/a;)V

    return-object v9

    .line 19
    :cond_2
    iget-object v0, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 20
    iget-object v0, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    .line 21
    invoke-interface {v0}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 23
    :cond_3
    iget-object v0, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 24
    new-instance v2, Le/a/l0/u/e/c;

    iget-object v3, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    .line 25
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v0, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F5()Le/a/k0/m/a;

    move-result-object v0

    .line 27
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    invoke-direct {v2, v3, v0}, Le/a/l0/u/e/c;-><init>(Landroid/content/ContentResolver;Le/a/k0/m/a;)V

    return-object v2

    .line 29
    :cond_4
    iget-object v0, p0, Le/a/a/o/a/m$b;->a:Le/a/a/o/a/m;

    .line 30
    new-instance v10, Le/a/a/o/a/k;

    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 31
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 33
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v2, v0, Le/a/a/o/a/m;->d:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/l0/u/e/b;

    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v6

    .line 35
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v2, v0, Le/a/a/o/a/m;->e:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v8

    .line 37
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v0, v0, Le/a/a/o/a/m;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v9

    .line 39
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v10

    .line 40
    invoke-direct/range {v2 .. v9}, Le/a/a/o/a/k;-><init>(Ls1/w/f;Ls1/w/f;Le/a/l0/u/e/b;Le/a/a/o/p;Lo3/a;Le/a/p5/c0;Le/a/q2/a;)V

    return-object v10
.end method
