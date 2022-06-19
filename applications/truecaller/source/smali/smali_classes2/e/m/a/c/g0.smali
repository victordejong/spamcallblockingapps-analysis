.class public final Le/m/a/c/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/c<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/a/c/g0;->a:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/c/g0;->b:Le/m/a/c/f1/c;

    .line 3
    iput-object v0, p0, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
