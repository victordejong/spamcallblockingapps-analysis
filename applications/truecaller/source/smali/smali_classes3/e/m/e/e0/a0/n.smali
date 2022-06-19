.class public final Le/m/e/e0/a0/n;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/e/b0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Le/m/e/k;Le/m/e/b0;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Le/m/e/b0<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/e/e0/a0/n;->a:Le/m/e/k;

    .line 3
    iput-object p2, p0, Le/m/e/e0/a0/n;->b:Le/m/e/b0;

    .line 4
    iput-object p3, p0, Le/m/e/e0/a0/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/n;->b:Le/m/e/b0;

    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/n;->b:Le/m/e/b0;

    .line 2
    iget-object v1, p0, Le/m/e/e0/a0/n;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Le/m/e/e0/a0/n;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Le/m/e/e0/a0/n;->a:Le/m/e/k;

    invoke-static {v1}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    .line 7
    instance-of v1, v0, Le/m/e/e0/a0/j$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Le/m/e/e0/a0/n;->b:Le/m/e/b0;

    instance-of v2, v1, Le/m/e/e0/a0/j$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void
.end method
