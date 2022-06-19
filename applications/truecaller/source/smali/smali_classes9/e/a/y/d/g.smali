.class public final Le/a/y/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/d/g;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/y/d/g;->b:Ljava/lang/String;

    iput-wide p3, p0, Le/a/y/d/g;->c:J

    iput-object p5, p0, Le/a/y/d/g;->d:Ljava/lang/String;

    return-void
.end method
