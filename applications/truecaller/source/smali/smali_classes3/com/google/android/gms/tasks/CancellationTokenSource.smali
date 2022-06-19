.class public Lcom/google/android/gms/tasks/CancellationTokenSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/f/q/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/f/q/g;

    invoke-direct {v0}, Le/m/a/f/q/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/g;->a:Le/m/a/f/q/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->y(Ljava/lang/Object;)Z

    return-void
.end method
