.class public final Lio/realm/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:Lio/realm/a;

.field private b:Lio/realm/internal/o;

.field private c:Lio/realm/internal/c;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/realm/a$e;->a:Lio/realm/a;

    .line 2
    iput-object v0, p0, Lio/realm/a$e;->b:Lio/realm/internal/o;

    .line 3
    iput-object v0, p0, Lio/realm/a$e;->c:Lio/realm/internal/c;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lio/realm/a$e;->d:Z

    .line 5
    iput-object v0, p0, Lio/realm/a$e;->e:Ljava/util/List;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/a$e;->d:Z

    return v0
.end method

.method public c()Lio/realm/internal/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a$e;->c:Lio/realm/internal/c;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/a$e;->e:Ljava/util/List;

    return-object v0
.end method

.method e()Lio/realm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a$e;->a:Lio/realm/a;

    return-object v0
.end method

.method public f()Lio/realm/internal/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a$e;->b:Lio/realm/internal/o;

    return-object v0
.end method

.method public g(Lio/realm/a;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/o;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/realm/a$e;->a:Lio/realm/a;

    .line 2
    iput-object p2, p0, Lio/realm/a$e;->b:Lio/realm/internal/o;

    .line 3
    iput-object p3, p0, Lio/realm/a$e;->c:Lio/realm/internal/c;

    .line 4
    iput-boolean p4, p0, Lio/realm/a$e;->d:Z

    .line 5
    iput-object p5, p0, Lio/realm/a$e;->e:Ljava/util/List;

    return-void
.end method
