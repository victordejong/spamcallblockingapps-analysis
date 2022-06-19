.class public final Le/m/a/f/l/a/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/q1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Le/m/a/f/l/a/q1;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/q1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, p0, Le/m/a/f/l/a/q1;->a:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhw;->z(Ljava/lang/Boolean;Z)V

    return-void
.end method
