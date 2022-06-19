.class public final Lkotlin/y/c$a;
.super Lkotlin/y/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/y/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/y/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/y/c;->b(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/y/c;->c()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/y/c;->d()I

    move-result v0

    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/y/c;->e(I)I

    move-result p1

    return p1
.end method

.method public f(II)I
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/y/c;->f(II)I

    move-result p1

    return p1
.end method

.method public g()J
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/y/c;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h(JJ)J
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/y/c;->a()Lkotlin/y/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/y/c;->h(JJ)J

    move-result-wide p1

    return-wide p1
.end method
