.class public final Le/m/a/f/l/a/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/e1;->e:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Le/m/a/f/l/a/e1;->a:Ljava/lang/String;

    iput-object p3, p0, Le/m/a/f/l/a/e1;->b:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/e1;->c:Ljava/lang/Object;

    iput-wide p5, p0, Le/m/a/f/l/a/e1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/e1;->e:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, p0, Le/m/a/f/l/a/e1;->a:Ljava/lang/String;

    iget-object v2, p0, Le/m/a/f/l/a/e1;->b:Ljava/lang/String;

    iget-object v3, p0, Le/m/a/f/l/a/e1;->c:Ljava/lang/Object;

    iget-wide v4, p0, Le/m/a/f/l/a/e1;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhw;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
