.class public final synthetic Le/m/a/c/r1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/r1/s$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/r1/s$a;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/r1/a;->a:Le/m/a/c/r1/s$a;

    iput-object p2, p0, Le/m/a/c/r1/a;->b:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/r1/a;->a:Le/m/a/c/r1/s$a;

    iget-object v1, p0, Le/m/a/c/r1/a;->b:Lcom/google/android/exoplayer2/Format;

    .line 1
    iget-object v0, v0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    .line 2
    sget v2, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface {v0, v1}, Le/m/a/c/r1/s;->n(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
