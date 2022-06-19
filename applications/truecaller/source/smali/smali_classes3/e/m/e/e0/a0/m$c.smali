.class public final Le/m/e/e0/a0/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Le/m/e/f0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/f0/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/m/e/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/y<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Le/m/e/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/p<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/m/e/f0/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/m/e/f0/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of p4, p1, Le/m/e/y;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    move-object p4, p1

    check-cast p4, Le/m/e/y;

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 4
    :goto_0
    iput-object p4, p0, Le/m/e/e0/a0/m$c;->d:Le/m/e/y;

    .line 5
    instance-of v1, p1, Le/m/e/p;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Le/m/e/p;

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 7
    :goto_1
    iput-object p1, p0, Le/m/e/e0/a0/m$c;->e:Le/m/e/p;

    if-nez p4, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 8
    :goto_3
    invoke-static {p1}, Le/m/d/y/n;->t(Z)V

    .line 9
    iput-object p2, p0, Le/m/e/e0/a0/m$c;->a:Le/m/e/f0/a;

    .line 10
    iput-boolean p3, p0, Le/m/e/e0/a0/m$c;->b:Z

    .line 11
    iput-object v0, p0, Le/m/e/e0/a0/m$c;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/m$c;->a:Le/m/e/f0/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p2}, Le/m/e/f0/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/m/e/e0/a0/m$c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/e/e0/a0/m$c;->a:Le/m/e/f0/a;

    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Le/m/e/e0/a0/m$c;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Le/m/e/e0/a0/m;

    iget-object v2, p0, Le/m/e/e0/a0/m$c;->d:Le/m/e/y;

    iget-object v3, p0, Le/m/e/e0/a0/m$c;->e:Le/m/e/p;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Le/m/e/e0/a0/m;-><init>(Le/m/e/y;Le/m/e/p;Le/m/e/k;Le/m/e/f0/a;Le/m/e/c0;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
