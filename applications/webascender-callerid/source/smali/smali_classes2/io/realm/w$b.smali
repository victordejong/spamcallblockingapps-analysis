.class Lio/realm/w$b;
.super Lio/realm/internal/OsResults$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lio/realm/w;


# direct methods
.method constructor <init>(Lio/realm/w;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/w$b;->h:Lio/realm/w;

    .line 2
    iget-object p1, p1, Lio/realm/w;->i:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults$b;-><init>(Lio/realm/internal/OsResults;I)V

    return-void
.end method


# virtual methods
.method protected b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/w$b;->h:Lio/realm/w;

    iget-object v1, v0, Lio/realm/w;->f:Lio/realm/a;

    iget-object v2, v0, Lio/realm/w;->g:Ljava/lang/Class;

    iget-object v0, v0, Lio/realm/w;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1}, Lio/realm/a;->z(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method
