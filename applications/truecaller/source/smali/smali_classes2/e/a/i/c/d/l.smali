.class public final Le/a/i/c/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/c/d/l$a;,
        Le/a/i/c/d/l$b;
    }
.end annotation


# static fields
.field public static final j:Ls1/d0/i;

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Le/a/i/c/d/l$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/String;

.field public final i:Le/a/i/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ls1/d0/i;

    const/16 v1, 0x28

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Ls1/d0/i;-><init>(II)V

    sput-object v0, Le/a/i/c/d/l;->j:Ls1/d0/i;

    const-string v3, "banner"

    const-string v4, "html_320x50"

    const-string v5, "html_320x100"

    const-string v6, "html_300x250"

    const-string v7, "html_320x140"

    const-string v8, "html_300x100"

    const-string v9, "native"

    const-string v10, "native_image_320x140"

    const-string v11, "native_image_300x250"

    .line 2
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/i/c/d/l;->k:Ljava/util/List;

    const-string v0, "banner"

    const-string v1, "html_320x50"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/i/c/d/l;->l:Ljava/util/List;

    const-string v0, "native"

    const-string v1, "native_image_320x140"

    const-string v2, "native_image_300x250"

    .line 6
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/i/c/d/l;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/a/i/c/d/l$a;Ls1/z/c/f;)V
    .locals 6

    .line 1
    iget-object p2, p1, Le/a/i/c/d/l$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 2
    iget-object v1, p1, Le/a/i/c/d/l$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p1, Le/a/i/c/d/l$a;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p1, Le/a/i/c/d/l$a;->d:Ljava/lang/String;

    .line 5
    iget-object v4, p1, Le/a/i/c/d/l$a;->e:Ljava/util/List;

    .line 6
    iget-object v5, p1, Le/a/i/c/d/l$a;->f:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Le/a/i/c/d/l$a;->g:Le/a/i/f;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/i/c/d/l;->a:Ljava/lang/String;

    iput-object v1, p0, Le/a/i/c/d/l;->b:Ljava/lang/String;

    iput-object v2, p0, Le/a/i/c/d/l;->c:Ljava/util/List;

    iput-object v3, p0, Le/a/i/c/d/l;->d:Ljava/lang/String;

    iput-object v4, p0, Le/a/i/c/d/l;->e:Ljava/util/List;

    iput-object v0, p0, Le/a/i/c/d/l;->f:Ljava/lang/Integer;

    iput-object v0, p0, Le/a/i/c/d/l;->g:Ljava/lang/Integer;

    iput-object v5, p0, Le/a/i/c/d/l;->h:Ljava/lang/String;

    iput-object p1, p0, Le/a/i/c/d/l;->i:Le/a/i/f;

    return-void

    :cond_0
    const-string p1, "adType"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "requestId"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "adUnitId"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
