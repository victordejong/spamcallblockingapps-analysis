.class public final Le/m/a/c/n1/c;
.super Le/m/a/c/n1/b;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 1

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p2, p3, v0

    .line 1
    invoke-direct {p0, p1, p3}, Le/m/a/c/n1/b;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2
    iput-object p4, p0, Le/m/a/c/n1/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
