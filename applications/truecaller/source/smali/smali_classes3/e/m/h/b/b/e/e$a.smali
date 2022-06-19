.class public Le/m/h/b/b/e/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/b/b/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/h/a/d/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/m/h/b/b/e/n$a;

.field public final d:Le/m/h/b/b/e/v;

.field public final e:Le/m/h/a/d/n/c;

.field public final f:Le/m/h/a/d/l;


# direct methods
.method public constructor <init>(Le/m/h/a/d/g;Landroid/content/Context;Le/m/h/b/b/e/n$a;Le/m/h/b/b/e/v;Le/m/h/a/d/n/c;Le/m/h/a/d/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/e$a;->a:Le/m/h/a/d/g;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/e$a;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Le/m/h/b/b/e/e$a;->c:Le/m/h/b/b/e/n$a;

    .line 5
    iput-object p4, p0, Le/m/h/b/b/e/e$a;->d:Le/m/h/b/b/e/v;

    .line 6
    iput-object p5, p0, Le/m/h/b/b/e/e$a;->e:Le/m/h/a/d/n/c;

    .line 7
    iput-object p6, p0, Le/m/h/b/b/e/e$a;->f:Le/m/h/a/d/l;

    return-void
.end method


# virtual methods
.method public final a(Le/m/h/b/b/b;)Le/m/h/b/b/e/e;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/h/b/b/e/e$a;->c:Le/m/h/b/b/e/n$a;

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    .line 7
    invoke-virtual {v1, v2}, Le/m/h/b/b/e/n$a;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Le/m/h/b/b/e/n;

    move-result-object v9

    .line 8
    new-instance v1, Le/m/h/b/b/e/e;

    iget-object v4, v0, Le/m/h/b/b/e/e$a;->a:Le/m/h/a/d/g;

    iget-object v5, v0, Le/m/h/b/b/e/e$a;->b:Landroid/content/Context;

    new-instance v6, Le/m/h/a/d/n/f;

    iget-object v11, v0, Le/m/h/b/b/e/e$a;->a:Le/m/h/a/d/g;

    sget-object v13, Le/m/h/b/b/e/j;->a:Le/m/h/a/d/n/e;

    iget-object v14, v0, Le/m/h/b/b/e/e$a;->e:Le/m/h/a/d/n/c;

    new-instance v15, Le/m/h/b/b/e/y;

    iget-object v2, v0, Le/m/h/b/b/e/e$a;->a:Le/m/h/a/d/g;

    .line 9
    invoke-virtual/range {p1 .. p1}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Le/m/h/b/b/e/y;-><init>(Le/m/h/a/d/g;Ljava/lang/String;)V

    move-object v10, v6

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Le/m/h/a/d/n/f;-><init>(Le/m/h/a/d/g;Le/m/h/a/c/b;Le/m/h/a/d/n/e;Le/m/h/a/d/n/c;Le/m/h/a/d/n/g;)V

    iget-object v8, v0, Le/m/h/b/b/e/e$a;->d:Le/m/h/b/b/e/v;

    new-instance v10, Le/m/h/b/b/e/o;

    invoke-direct {v10, v9}, Le/m/h/b/b/e/o;-><init>(Le/m/h/b/b/e/n;)V

    iget-object v2, v0, Le/m/h/b/b/e/e$a;->b:Landroid/content/Context;

    const-string v3, "download"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/app/DownloadManager;

    iget-object v12, v0, Le/m/h/b/b/e/e$a;->e:Le/m/h/a/d/n/c;

    iget-object v13, v0, Le/m/h/b/b/e/e$a;->f:Le/m/h/a/d/l;

    new-instance v14, Le/m/h/b/b/e/a;

    invoke-direct {v14}, Le/m/h/b/b/e/a;-><init>()V

    move-object v3, v1

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v14}, Le/m/h/b/b/e/e;-><init>(Le/m/h/a/d/g;Landroid/content/Context;Le/m/h/a/d/n/f;Le/m/h/b/b/b;Le/m/h/b/b/e/v;Le/m/h/b/b/e/n;Le/m/h/b/b/e/o;Landroid/app/DownloadManager;Le/m/h/a/d/n/c;Le/m/h/a/d/l;Le/m/h/b/b/e/a;)V

    return-object v1
.end method
