.class public final Le/a/k/n/e/b$f;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/n/e/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl"
    f = "HiddenContactRepository.kt"
    l = {
        0x2c
    }
    m = "isPhoneNumberHidden"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/k/n/e/b;


# direct methods
.method public constructor <init>(Le/a/k/n/e/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/e/b$f;->f:Le/a/k/n/e/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/k/n/e/b$f;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/k/n/e/b$f;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/k/n/e/b$f;->e:I

    iget-object p1, p0, Le/a/k/n/e/b$f;->f:Le/a/k/n/e/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/k/n/e/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
