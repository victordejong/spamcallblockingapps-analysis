.class public final synthetic Le/m/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/t$b;


# instance fields
.field public final synthetic a:Le/m/a/c/d0$b;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/d0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/i;->a:Le/m/a/c/d0$b;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/q0$b;)V
    .locals 2

    iget-object v0, p0, Le/m/a/c/i;->a:Le/m/a/c/d0$b;

    .line 1
    iget-object v0, v0, Le/m/a/c/d0$b;->a:Le/m/a/c/n0;

    iget-object v1, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v0, v0, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-interface {p1, v1, v0}, Le/m/a/c/q0$b;->fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V

    return-void
.end method
