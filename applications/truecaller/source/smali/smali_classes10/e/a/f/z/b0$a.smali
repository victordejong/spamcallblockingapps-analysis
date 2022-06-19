.class public final Le/a/f/z/b0$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/b0;->a(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;ZZZZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.InCallUITrueContextPresenterProviderImpl"
    f = "InCallUITrueContextPresenterProvider.kt"
    l = {
        0x3d
    }
    m = "provide"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/f/z/b0;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Le/a/f/z/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/b0$a;->f:Le/a/f/z/b0;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iput-object p1, p0, Le/a/f/z/b0$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/f/z/b0$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/f/z/b0$a;->e:I

    iget-object v0, p0, Le/a/f/z/b0$a;->f:Le/a/f/z/b0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Le/a/f/z/b0;->a(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;ZZZZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
