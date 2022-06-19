.class public final Le/a/t1$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
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
.field public final a:Le/a/t1;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 3
    iput p2, p0, Le/a/t1$u;->b:I

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
    iget v0, p0, Le/a/t1$u;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$u;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 4
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 5
    invoke-interface {v0}, Le/a/j2;->B0()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 8
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {v0}, Le/a/j2;->m1()Le/a/n/m;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 11
    :pswitch_2
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 12
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v0}, Le/a/j2;->W0()Le/a/k0/n/e/h;

    move-result-object v0

    .line 14
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 15
    :pswitch_3
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 16
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 17
    invoke-interface {v0}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 19
    :pswitch_4
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 20
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 21
    invoke-interface {v0}, Le/a/j2;->N7()Le/a/h3/b/a;

    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 23
    :pswitch_5
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 24
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 25
    invoke-interface {v0}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 27
    :pswitch_6
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 28
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 29
    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 31
    :pswitch_7
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 32
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 33
    invoke-interface {v0}, Le/a/j2;->P0()Le/a/f4/g/r;

    move-result-object v0

    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 35
    :pswitch_8
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 36
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :pswitch_9
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 40
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 41
    invoke-interface {v0}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 43
    :pswitch_a
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 44
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 45
    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 47
    :pswitch_b
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 48
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 49
    invoke-interface {v0}, Le/a/j2;->p6()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 51
    :pswitch_c
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 52
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 53
    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    .line 54
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 55
    :pswitch_d
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 56
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 57
    invoke-interface {v0}, Le/a/j2;->T6()Le/a/a/w0/a;

    move-result-object v0

    .line 58
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 59
    :pswitch_e
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 60
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 61
    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    .line 62
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 63
    :pswitch_f
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 64
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 65
    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    .line 66
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 67
    :pswitch_10
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 68
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 69
    invoke-interface {v0}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v0

    .line 70
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 71
    :pswitch_11
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 72
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 73
    invoke-interface {v0}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v0

    .line 74
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 75
    :pswitch_12
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 76
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 77
    invoke-interface {v0}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v0

    .line 78
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 79
    :pswitch_13
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 80
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 81
    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    .line 82
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 83
    :pswitch_14
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 84
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 85
    invoke-interface {v0}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 87
    :pswitch_15
    iget-object v0, p0, Le/a/t1$u;->a:Le/a/t1;

    .line 88
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 89
    invoke-interface {v0}, Le/a/j2;->K0()Le/a/s4/a;

    move-result-object v0

    .line 90
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
