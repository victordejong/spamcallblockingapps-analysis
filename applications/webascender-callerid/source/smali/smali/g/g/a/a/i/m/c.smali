.class public Lg/g/a/a/i/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private reports:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reports"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/m/g;",
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
.method public getReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/a/a/i/m/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/m/c;->reports:Ljava/util/List;

    return-object v0
.end method

.method public setReports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/m/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/m/c;->reports:Ljava/util/List;

    return-void
.end method
