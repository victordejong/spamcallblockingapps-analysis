.class public final Le/a/b/b/c/u/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/c/u/c;
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
.field public final a:Le/a/b/b/c/u/c;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/b/b/c/u/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 3
    iput p2, p0, Le/a/b/b/c/u/c$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/b/b/c/u/c$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/b/b/c/u/c$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    new-instance v0, Le/a/b/l/p;

    invoke-direct {v0}, Le/a/b/l/p;-><init>()V

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 5
    new-instance v2, Le/a/b/b/c/s;

    iget-object v0, v0, Le/a/b/b/c/u/c;->b:Le/a/q2/e;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {v2, v0}, Le/a/b/b/c/s;-><init>(Le/a/q2/a;)V

    return-object v2

    .line 8
    :pswitch_2
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 9
    iget-object v2, v0, Le/a/b/b/c/u/c;->c:Le/a/b/b/c/u/b;

    iget-object v0, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-object v1

    .line 13
    :pswitch_3
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 14
    new-instance v2, Le/a/b/l/b;

    iget-object v3, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v3

    .line 15
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v4, v0, Le/a/b/b/c/u/c;->q:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Geocoder;

    iget-object v0, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->P()Ls1/w/f;

    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-direct {v2, v3, v4, v0}, Le/a/b/l/b;-><init>(Landroid/content/Context;Landroid/location/Geocoder;Ls1/w/f;)V

    return-object v2

    .line 19
    :pswitch_4
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 20
    iget-object v0, v0, Le/a/b/b/c/u/c;->c:Le/a/b/b/c/u/b;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    return-object v0

    .line 23
    :pswitch_5
    new-instance v0, Le/a/m4/c/g;

    invoke-direct {v0}, Le/a/m4/c/g;-><init>()V

    return-object v0

    .line 24
    :pswitch_6
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 25
    new-instance v2, Le/a/m4/c/d;

    iget-object v3, v0, Le/a/b/b/c/u/c;->k:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/m4/c/f;

    iget-object v0, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-direct {v2, v3, v0}, Le/a/m4/c/d;-><init>(Le/a/m4/c/f;Ls1/w/f;)V

    return-object v2

    .line 28
    :pswitch_7
    new-instance v0, Le/a/b/l/g;

    invoke-direct {v0}, Le/a/b/l/g;-><init>()V

    return-object v0

    .line 29
    :pswitch_8
    iget-object v0, p0, Le/a/b/b/c/u/c$b;->a:Le/a/b/b/c/u/c;

    .line 30
    new-instance v9, Le/a/b/l/i;

    iget-object v2, v0, Le/a/b/b/c/u/c;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b/l/f;

    iget-object v2, v0, Le/a/b/b/c/u/c;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/m4/c/c;

    iget-object v2, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v5

    .line 31
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v2, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v6

    .line 33
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v2, v0, Le/a/b/b/c/u/c;->n:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/m/e/k;

    iget-object v0, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v8

    .line 35
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v9

    .line 36
    invoke-direct/range {v2 .. v8}, Le/a/b/l/i;-><init>(Le/a/b/l/f;Le/a/m4/c/c;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/m/e/k;Ls1/w/f;)V

    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
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
