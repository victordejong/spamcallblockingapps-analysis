.class public final synthetic Le/m/a/h/a/g/g/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/g/t;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/u;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/q;->a:Le/m/a/h/a/g/g/u;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/g/g/q;->a:Le/m/a/h/a/g/g/u;

    .line 1
    new-instance v1, Le/m/a/h/a/g/g/r;

    .line 2
    invoke-direct {v1, v0}, Le/m/a/h/a/g/g/r;-><init>(Le/m/a/h/a/g/g/u;)V

    const-string v2, "split-install-errors"

    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/g/g/u;->a(Ljava/lang/String;Le/m/a/h/a/g/g/t;)V

    return-void
.end method
