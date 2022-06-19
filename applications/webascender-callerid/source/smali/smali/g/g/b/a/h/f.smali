.class public abstract Lg/g/b/a/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/h/f$a;
    }
.end annotation


# static fields
.field public static final a:Lg/g/b/a/h/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g/b/a/h/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/b/a/h/f$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/b/a/h/f;->a:Lg/g/b/a/h/f$a;

    return-void
.end method

.method public static final a()Lcom/google/gson/f;
    .locals 1

    sget-object v0, Lg/g/b/a/h/f;->a:Lg/g/b/a/h/f$a;

    invoke-virtual {v0}, Lg/g/b/a/h/f$a;->a()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
