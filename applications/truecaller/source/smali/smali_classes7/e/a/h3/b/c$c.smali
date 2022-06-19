.class public final Le/a/h3/b/c$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h3/b/c;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.clipboard.data.ClipboardDataManagerImpl"
    f = "ClipboardDataManager.kt"
    l = {
        0x88
    }
    m = "tryExtractNumber"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/h3/b/c;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/h3/b/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h3/b/c$c;->f:Le/a/h3/b/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/h3/b/c$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/h3/b/c$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/h3/b/c$c;->e:I

    iget-object p1, p0, Le/a/h3/b/c$c;->f:Le/a/h3/b/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/h3/b/c;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
