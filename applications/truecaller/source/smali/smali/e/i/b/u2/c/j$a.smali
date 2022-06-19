.class public final Le/i/b/u2/c/j$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/c/p;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/c/j$a;->b:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "url"

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Le/i/b/u2/c/j$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Le/i/b/u2/c/j$a;->b:Le/m/e/k;

    const-class v2, Ljava/net/URL;

    invoke-virtual {v1, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/j$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v1, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/net/URL;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 15
    new-instance p1, Le/i/b/u2/c/j;

    invoke-direct {p1, v2}, Le/i/b/u2/c/j;-><init>(Ljava/net/URL;)V

    move-object v2, p1

    :goto_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(NativeImpressionPixel)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/c/p;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v0, "url"

    .line 4
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 5
    invoke-virtual {p2}, Le/i/b/u2/c/p;->a()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/i/b/u2/c/j$a;->a:Le/m/e/b0;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Le/i/b/u2/c/j$a;->b:Le/m/e/k;

    const-class v1, Ljava/net/URL;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/j$a;->a:Le/m/e/b0;

    .line 9
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/c/p;->a()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_1
    return-void
.end method
