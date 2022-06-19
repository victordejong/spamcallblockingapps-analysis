.class public Le/a/a/g/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/a/k/j;

.field public final b:Le/a/a/k/m;

.field public c:Lw3/b/a/b;

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lw3/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lw3/b/a/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/o$c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/a/a/g/o$b;->d:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Le/a/a/g/o$b;->a:Le/a/a/k/j;

    .line 4
    iput-object p2, p0, Le/a/a/g/o$b;->b:Le/a/a/k/m;

    .line 5
    iget-object p1, p3, Le/a/a/g/o$c;->b:Lw3/b/a/b;

    iput-object p1, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    .line 6
    iget-object p1, p3, Le/a/a/g/o$c;->c:Lw3/b/a/b;

    iput-object p1, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    .line 7
    iput-boolean p4, p0, Le/a/a/g/o$b;->f:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    .line 2
    invoke-virtual {v2}, Lw3/b/a/e0/a;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, v2, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 5
    invoke-virtual {v3}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object v3

    .line 6
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 7
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    .line 9
    invoke-virtual {v2}, Lw3/b/a/e0/a;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->c:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    .line 10
    invoke-virtual {v2}, Lw3/b/a/e0/a;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, v2, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 13
    invoke-virtual {v3}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object v3

    .line 14
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 15
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    .line 17
    invoke-virtual {v2}, Lw3/b/a/e0/a;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Le/a/a/g/o$b;->e:Lw3/b/a/b;

    invoke-virtual {v2}, Lw3/b/a/e0/a;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "Batch from %1$02d:%2$02d:%3$02d %4$02d/%5$02d/%6$04d to %7$02d:%8$02d:%9$02d %10$02d/%11$02d/%12$04d"

    .line 18
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
