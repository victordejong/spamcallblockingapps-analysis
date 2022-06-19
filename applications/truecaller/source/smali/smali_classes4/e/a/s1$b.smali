.class public final Le/a/s1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s1;
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
.field public final a:Le/a/s1;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 3
    iput p2, p0, Le/a/s1$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/s1$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/s1$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 4
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 5
    invoke-interface {v0}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 8
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 9
    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 11
    :pswitch_2
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 12
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 13
    invoke-interface {v0}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 15
    :pswitch_3
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 16
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 17
    invoke-interface {v0}, Le/a/j2;->h3()Le/a/h/q0/a;

    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 19
    :pswitch_4
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 20
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 21
    invoke-interface {v0}, Le/a/j2;->I0()Le/a/r2/f;

    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 23
    :pswitch_5
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 24
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 25
    invoke-interface {v0}, Le/a/j2;->v3()Le/a/a/r0/c;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 27
    :pswitch_6
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 28
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 29
    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 31
    :pswitch_7
    iget-object v0, p0, Le/a/s1$b;->a:Le/a/s1;

    .line 32
    iget-object v0, v0, Le/a/s1;->b:Le/a/j2;

    .line 33
    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
