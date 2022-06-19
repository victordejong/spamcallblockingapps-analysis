.class public final synthetic Le/a/h0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/h0/k;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/h0/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/b;->a:Le/a/h0/k;

    iput-object p2, p0, Le/a/h0/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/h0/b;->a:Le/a/h0/k;

    iget-object v1, p0, Le/a/h0/b;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1}, Le/a/h0/k;->F(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
