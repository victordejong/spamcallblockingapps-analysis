.class public Lg/g/a/a/i/l/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field trackEvents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/v/c;
        value = "trackEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/l/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/l/s;->trackEvents:Ljava/util/List;

    return-void
.end method
