.class public Lp3/a/n1/a2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/i0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a2;->b(Lp3/a/i0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/i0$h;

.field public final synthetic b:Lp3/a/n1/a2;


# direct methods
.method public constructor <init>(Lp3/a/n1/a2;Lp3/a/i0$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a2$a;->b:Lp3/a/n1/a2;

    iput-object p2, p0, Lp3/a/n1/a2$a;->a:Lp3/a/i0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/p;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/a2$a;->b:Lp3/a/n1/a2;

    iget-object v1, p0, Lp3/a/n1/a2$a;->a:Lp3/a/i0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p1, Lp3/a/p;->a:Lp3/a/o;

    .line 4
    sget-object v3, Lp3/a/o;->e:Lp3/a/o;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p1, 0x3

    if-ne v3, p1, :cond_1

    .line 6
    new-instance p1, Lp3/a/n1/a2$c;

    invoke-direct {p1, v0, v1}, Lp3/a/n1/a2$c;-><init>(Lp3/a/n1/a2;Lp3/a/i0$h;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance v1, Lp3/a/n1/a2$b;

    .line 9
    iget-object p1, p1, Lp3/a/p;->b:Lp3/a/g1;

    .line 10
    invoke-static {p1}, Lp3/a/i0$e;->a(Lp3/a/g1;)Lp3/a/i0$e;

    move-result-object p1

    invoke-direct {v1, p1}, Lp3/a/n1/a2$b;-><init>(Lp3/a/i0$e;)V

    move-object p1, v1

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Lp3/a/n1/a2$b;

    invoke-static {v1}, Lp3/a/i0$e;->b(Lp3/a/i0$h;)Lp3/a/i0$e;

    move-result-object v1

    invoke-direct {p1, v1}, Lp3/a/n1/a2$b;-><init>(Lp3/a/i0$e;)V

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Lp3/a/n1/a2$b;

    .line 13
    sget-object v1, Lp3/a/i0$e;->e:Lp3/a/i0$e;

    .line 14
    invoke-direct {p1, v1}, Lp3/a/n1/a2$b;-><init>(Lp3/a/i0$e;)V

    .line 15
    :goto_0
    iget-object v0, v0, Lp3/a/n1/a2;->b:Lp3/a/i0$d;

    invoke-virtual {v0, v2, p1}, Lp3/a/i0$d;->d(Lp3/a/o;Lp3/a/i0$i;)V

    :goto_1
    return-void
.end method
