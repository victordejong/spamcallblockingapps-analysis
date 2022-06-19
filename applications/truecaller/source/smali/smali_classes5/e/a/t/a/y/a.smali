.class public final Le/a/t/a/y/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/t/a/y/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/t/a/y/a;

    invoke-direct {v0}, Le/a/t/a/y/a;-><init>()V

    sput-object v0, Le/a/t/a/y/a;->b:Le/a/t/a/y/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->e0(I)I

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Ls1/f0/v;->M(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
