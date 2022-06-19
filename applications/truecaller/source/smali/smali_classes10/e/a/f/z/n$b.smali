.class public final Le/a/f/z/n$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/n;->b(Le/a/f/a/g;Ljava/lang/Integer;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.InCallUICallerLabelFactoryImpl"
    f = "InCallUICallerLabelFactory.kt"
    l = {
        0x63
    }
    m = "getCallerLabel"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/f/z/n;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/f/z/n;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/n$b;->f:Le/a/f/z/n;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/f/z/n$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/f/z/n$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/f/z/n$b;->e:I

    iget-object p1, p0, Le/a/f/z/n$b;->f:Le/a/f/z/n;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, p0}, Le/a/f/z/n;->b(Le/a/f/a/g;Ljava/lang/Integer;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
