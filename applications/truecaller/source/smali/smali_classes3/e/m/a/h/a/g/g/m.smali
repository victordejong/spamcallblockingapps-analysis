.class public final Le/m/a/h/a/g/g/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/d0;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Le/m/a/h/a/g/g/a;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/g/m;->f:Le/m/a/h/a/g/g/a;

    iput-object p2, p0, Le/m/a/h/a/g/g/m;->a:Ljava/util/List;

    iput-object p3, p0, Le/m/a/h/a/g/g/m;->b:Ljava/util/List;

    iput-wide p4, p0, Le/m/a/h/a/g/g/m;->c:J

    iput-boolean p6, p0, Le/m/a/h/a/g/g/m;->d:Z

    iput-object p7, p0, Le/m/a/h/a/g/g/m;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/g/g/m;->f:Le/m/a/h/a/g/g/a;

    iget-object v1, p0, Le/m/a/h/a/g/g/m;->a:Ljava/util/List;

    iget-object v2, p0, Le/m/a/h/a/g/g/m;->b:Ljava/util/List;

    iget-wide v3, p0, Le/m/a/h/a/g/g/m;->c:J

    .line 1
    invoke-virtual {v0, v1, v2, v3, v4}, Le/m/a/h/a/g/g/a;->m(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public final zzb(I)V
    .locals 8

    iget-object v0, p0, Le/m/a/h/a/g/g/m;->f:Le/m/a/h/a/g/g/a;

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    .line 1
    invoke-virtual/range {v0 .. v7}, Le/m/a/h/a/g/g/a;->n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    return-void
.end method

.method public final zzc()V
    .locals 8

    iget-boolean v0, p0, Le/m/a/h/a/g/g/m;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Le/m/a/h/a/g/g/m;->f:Le/m/a/h/a/g/g/a;

    iget-object v2, p0, Le/m/a/h/a/g/g/m;->e:Ljava/util/List;

    iget-object v3, p0, Le/m/a/h/a/g/g/m;->a:Ljava/util/List;

    iget-object v4, p0, Le/m/a/h/a/g/g/m;->b:Ljava/util/List;

    iget-wide v5, p0, Le/m/a/h/a/g/g/m;->c:J

    const/4 v7, 0x1

    .line 1
    invoke-virtual/range {v1 .. v7}, Le/m/a/h/a/g/g/a;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V

    :cond_0
    return-void
.end method
