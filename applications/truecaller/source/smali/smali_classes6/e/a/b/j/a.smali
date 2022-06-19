.class public abstract Le/a/b/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/j/a$a;,
        Le/a/b/j/a$b;,
        Le/a/b/j/a$c;,
        Le/a/b/j/a$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

.field public final b:Lcom/truecaller/data/entity/Contact;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/data/entity/Contact;ZZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/j/a;->a:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    iput-object p2, p0, Le/a/b/j/a;->b:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/b/j/a;->c:Z

    iput-boolean p4, p0, Le/a/b/j/a;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/data/entity/Contact;ZZLs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/j/a;->a:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    iput-object p2, p0, Le/a/b/j/a;->b:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/b/j/a;->c:Z

    iput-boolean p4, p0, Le/a/b/j/a;->d:Z

    return-void
.end method
