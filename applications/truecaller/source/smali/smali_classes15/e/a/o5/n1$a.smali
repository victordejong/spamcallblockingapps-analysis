.class public abstract Le/a/o5/n1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/n1$a$b;,
        Le/a/o5/n1$a$c;,
        Le/a/o5/n1$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/o5/n1$a;->a:I

    iput-object p2, p0, Le/a/o5/n1$a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/o5/n1$a;->c:Ljava/lang/String;

    iput p4, p0, Le/a/o5/n1$a;->d:I

    iput-boolean p5, p0, Le/a/o5/n1$a;->e:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZLs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/o5/n1$a;->a:I

    iput-object p2, p0, Le/a/o5/n1$a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/o5/n1$a;->c:Ljava/lang/String;

    iput p4, p0, Le/a/o5/n1$a;->d:I

    iput-boolean p5, p0, Le/a/o5/n1$a;->e:Z

    return-void
.end method
