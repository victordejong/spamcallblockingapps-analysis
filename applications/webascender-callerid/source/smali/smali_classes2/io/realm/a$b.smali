.class Lio/realm/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a;-><init>(Lio/realm/b0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/y$b;

.field final synthetic b:Lio/realm/a;


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/y$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/a$b;->b:Lio/realm/a;

    iput-object p2, p0, Lio/realm/a$b;->a:Lio/realm/y$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(Lio/realm/internal/OsSharedRealm;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/realm/y;->U0(Lio/realm/internal/OsSharedRealm;)Lio/realm/y;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/realm/a$b;->a:Lio/realm/y$b;

    invoke-interface {v0, p1}, Lio/realm/y$b;->a(Lio/realm/y;)V

    return-void
.end method
