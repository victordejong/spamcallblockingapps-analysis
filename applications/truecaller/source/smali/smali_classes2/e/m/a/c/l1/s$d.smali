.class public final Le/m/a/c/l1/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/q;

.field public final b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final c:[Z

.field public final d:[Z

.field public final e:[Z


# direct methods
.method public constructor <init>(Le/m/a/c/g1/q;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/s$d;->a:Le/m/a/c/g1/q;

    .line 3
    iput-object p2, p0, Le/m/a/c/l1/s$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 4
    iput-object p3, p0, Le/m/a/c/l1/s$d;->c:[Z

    .line 5
    iget p1, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, Le/m/a/c/l1/s$d;->d:[Z

    .line 6
    new-array p1, p1, [Z

    iput-object p1, p0, Le/m/a/c/l1/s$d;->e:[Z

    return-void
.end method
