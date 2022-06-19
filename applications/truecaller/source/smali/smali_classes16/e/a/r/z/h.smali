.class public final Le/a/r/z/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "email"

    const-string v3, "subject"

    const-string v5, "body"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/h;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/r/z/h;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/z/h;->c:Ljava/lang/String;

    return-void
.end method
