.class public final Lg/g/b/a/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/hiya/client/callerid/prefs/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/prefs/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/k/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lg/g/b/a/k/e;->e:Lcom/hiya/client/callerid/prefs/e;

    .line 2
    new-instance p1, Lg/g/b/a/k/e$a;

    invoke-direct {p1, p0}, Lg/g/b/a/k/e$a;-><init>(Lg/g/b/a/k/e;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lg/g/b/a/k/e;->a:Lkotlin/g;

    .line 3
    new-instance p1, Lg/g/b/a/k/e$c;

    invoke-direct {p1, p0}, Lg/g/b/a/k/e$c;-><init>(Lg/g/b/a/k/e;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lg/g/b/a/k/e;->b:Lkotlin/g;

    .line 4
    new-instance p1, Lg/g/b/a/k/e$b;

    invoke-direct {p1, p0}, Lg/g/b/a/k/e$b;-><init>(Lg/g/b/a/k/e;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lg/g/b/a/k/e;->c:Lkotlin/g;

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/d;)I
    .locals 1

    const-string v0, "assetType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/a/k/d;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lg/g/b/a/k/e;->e:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/Cache;->f()I

    move-result p1

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lg/g/b/a/k/e;->e:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/Cache;->b()I

    move-result p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/k/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Lg/g/b/c/d;)Ljava/io/File;
    .locals 1

    const-string v0, "assetType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/a/k/d;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lg/g/b/a/k/e;->c:Lkotlin/g;

    invoke-interface {p1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lg/g/b/a/k/e;->b:Lkotlin/g;

    invoke-interface {p1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lg/g/b/a/k/e;->a:Lkotlin/g;

    invoke-interface {p1}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lg/g/b/c/d;)J
    .locals 2

    const-string v0, "assetType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/a/k/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lg/g/b/a/k/e;->e:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/Cache;->g()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lg/g/b/a/k/e;->e:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/Cache;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
