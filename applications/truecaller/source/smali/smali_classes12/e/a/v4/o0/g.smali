.class public final Le/a/v4/o0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/o0/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/o0/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/o0/g;->a:Ljava/lang/String;

    return-object v0
.end method
